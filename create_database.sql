-- WildBase Database Schema
-- Created: 2025

-- Animals table
CREATE TABLE IF NOT EXISTS animals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL, -- Cats, Dogs, Birds, Rabbits, Hedgehogs
    origin TEXT,
    temperament TEXT,
    description TEXT,
    size TEXT,
    lifespan TEXT,
    image_url TEXT,
    care_level TEXT, -- Easy, Moderate, Expert
    good_with_kids TEXT, -- Yes, No
    good_with_pets TEXT, -- Yes, No
    exercise_needs TEXT, -- Low, Medium, High
    noise_level TEXT, -- Quiet, Moderate, Loud
    space_required TEXT, -- Apartment, Small yard, Large yard
    price_range TEXT,
    diet TEXT, -- Herbivore, Carnivore, Omnivore
    conservation_status TEXT, -- Common, Endangered, etc.
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- My Friends table (personal animal records)
CREATE TABLE IF NOT EXISTS my_friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    species TEXT,
    age TEXT,
    gender TEXT,
    color TEXT,
    weight TEXT,
    address TEXT,
    vaccination_status TEXT,
    personality TEXT,
    favorite_food TEXT,
    health_notes TEXT,
    photo_url TEXT,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index for category filtering
CREATE INDEX IF NOT EXISTS idx_animals_category ON animals(category);

-- Index for name search
CREATE INDEX IF NOT EXISTS idx_animals_name ON animals(name);

-- Insert sample data
INSERT INTO animals (name, category, origin, temperament, description, size, lifespan, image_url, care_level, good_with_kids, good_with_pets, exercise_needs, noise_level, space_required, price_range, diet, conservation_status)
VALUES
-- Cats
('Abyssinian', 'Cats', 'Ethiopia/United States', 'Active, playful, intelligent', 'One of the oldest known breeds. Known for ticked coat and playful personality.', 'Medium', '9-15 years', 'assets/cats/01_Abyssinian.jpg', 'Easy', 'Yes', 'Yes', 'High', 'Moderate', 'Apartment', '$800-$1,500', 'Carnivore', 'Common'),
('Maine Coon', 'Cats', 'United States', 'Gentle, sociable, intelligent', 'One of the largest domestic cat breeds. Known as gentle giants with their friendly nature and impressive size.', 'Large', '12-15 years', 'assets/cats/22_Maine_Coon.jpg', 'Moderate', 'Yes', 'Yes', 'Medium', 'Moderate', 'Small yard', '$800-$2,000', 'Carnivore', 'Common'),
('Persian', 'Cats', 'Iran/United Kingdom', 'Calm, sweet, affectionate', 'One of the most popular breeds worldwide. Known for long, luxurious coat and flat face.', 'Medium to Large', '12-17 years', 'assets/cats/27_Persian.jpg', 'Expert', 'Yes', 'Yes', 'Low', 'Quiet', 'Apartment', '$500-$5,000', 'Carnivore', 'Common'),
('Siamese', 'Cats', 'Thailand', 'Vocal, intelligent, affectionate', 'One of the most recognizable breeds. Known for striking blue eyes and color-point coat.', 'Medium', '12-20 years', 'assets/cats/34_Siamese.jpg', 'Easy', 'Yes', 'Yes', 'High', 'Loud', 'Apartment', '$500-$2,000', 'Carnivore', 'Common'),
('Sphynx', 'Cats', 'Canada', 'Energetic, affectionate, intelligent', 'Hairless breed known for wrinkled skin and large ears. Very social and loves warmth.', 'Medium', '8-14 years', 'assets/cats/38_Sphynx.jpg', 'Expert', 'Yes', 'Yes', 'High', 'Moderate', 'Apartment', '$1,500-$4,000', 'Carnivore', 'Common'),
-- Dogs
('Labrador Retriever', 'Dogs', 'Canada', 'Friendly, outgoing, active', 'One of the most popular dog breeds. Known for friendly nature and love of water.', 'Large', '10-12 years', 'assets/dogs/57_Labrador_Retriever.jpg', 'Moderate', 'Yes', 'Yes', 'High', 'Moderate', 'Large yard', '$800-$2,000', 'Omnivore', 'Common'),
('German Shepherd', 'Dogs', 'Germany', 'Confident, courageous, intelligent', 'Versatile working dog. Known for loyalty, courage, and ability to learn commands.', 'Large', '9-13 years', 'assets/dogs/58_German_Shepherd.jpg', 'Expert', 'Yes', 'Yes', 'High', 'Loud', 'Large yard', '$500-$2,500', 'Omnivore', 'Common'),
('Golden Retriever', 'Dogs', 'United Kingdom', 'Intelligent, friendly, devoted', 'Popular family dog. Known for beautiful golden coat and gentle temperament.', 'Large', '10-12 years', 'assets/dogs/59_Golden_Retriever.jpg', 'Moderate', 'Yes', 'Yes', 'High', 'Moderate', 'Large yard', '$500-$2,000', 'Omnivore', 'Common'),
-- Birds
('Budgerigar', 'Birds', 'Australia', 'Friendly, social, playful', 'Small parakeet known for colorful plumage and ability to mimic speech.', 'Small', '5-10 years', 'assets/birds/69_Budgerigar.jpg', 'Easy', 'Yes', 'Yes', 'Medium', 'Moderate', 'Apartment', '$20-$50', 'Herbivore', 'Common'),
('Cockatiel', 'Birds', 'Australia', 'Friendly, whistle-happy, cuddly', 'Small crested parrot known for friendly nature and beautiful crest.', 'Small', '15-25 years', 'assets/birds/70_Cockatiel.jpg', 'Easy', 'Yes', 'Yes', 'Medium', 'Moderate', 'Apartment', '$50-$200', 'Herbivore', 'Common'),
-- Rabbits
('Holland Lop', 'Rabbits', 'Netherlands', 'Friendly, gentle, playful', 'Small rabbit with floppy ears. Known for docile temperament and compact size.', 'Small', '7-12 years', 'assets/rabbits/75_Holland_Lop.jpg', 'Moderate', 'Yes', 'Yes', 'Medium', 'Quiet', 'Apartment', '$20-$50', 'Herbivore', 'Common'),
('Netherland Dwarf', 'Rabbits', 'Netherlands', 'Curious, energetic, shy', 'One of the smallest rabbit breeds. Known for tiny size and short ears.', 'Small', '7-12 years', 'assets/rabbits/76_Netherland_Dwarf.jpg', 'Moderate', 'Yes', 'Yes', 'Medium', 'Quiet', 'Apartment', '$25-$75', 'Herbivore', 'Common'),
-- Hedgehogs
('African Pygmy Hedgehog', 'Hedgehogs', 'Africa', 'Curious, friendly, gentle', 'Small insectivore known for spiny coat and cute snout. Popular exotic pet.', 'Small', '3-5 years', 'assets/hedgehogs/80_African_Pygmy.jpg', 'Moderate', 'Yes', 'No', 'Medium', 'Quiet', 'Apartment', '$100-$300', 'Carnivore', 'Common');
