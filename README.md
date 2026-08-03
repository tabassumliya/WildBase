# 🐾 WildBase

A comprehensive animal database web application for browsing and managing pet information.

## Features

- **Multi-category database**: Browse cats, dogs, birds, rabbits, and hedgehogs
- **Advanced filtering**: Search by name, breed, or origin with category filters
- **Multiple views**: Card, List, and Compact view modes
- **Detailed information**: Each animal includes temperament, care level, price range, and more
- **My Friends section**: Keep personal records of your pets with photos
- **Responsive design**: Works on desktop and mobile devices
- **Local storage**: Your personal pet data persists in the browser

## Tech Stack

- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Database**: JSON data structure
- **Storage**: LocalStorage for personal records
- **Styling**: Modern CSS with gradients and animations
- **No frameworks**: Pure vanilla implementation

## Project Structure

```
WildBase/
├── index.html              # Main application
├── animals.json            # Animal database (81 breeds/species)
├── create_database.sql     # SQL schema for reference
├── assets/
│   ├── cats/              # 56 cat breed images
│   ├── dogs/              # 12 dog breed images
│   ├── birds/             # 6 bird species images
│   ├── rabbits/           # 5 rabbit breed images
│   └── hedgehogs/         # 2 hedgehog species images
├── my-friends/
│   ├── photos/            # Personal pet photos
│   └── (data in localStorage)
└── README.md
```

## Categories

| Category | Count | Examples |
|----------|-------|----------|
| 🐱 Cats | 56 | Persian, Siamese, Maine Coon, Bengal, Sphynx |
| 🐕 Dogs | 12 | Labrador, German Shepherd, Golden Retriever, Poodle |
| 🐦 Birds | 6 | Budgerigar, Cockatiel, African Grey, Macaw |
| 🐰 Rabbits | 5 | Holland Lop, Netherland Dwarf, Flemish Giant |
| 🦔 Hedgehogs | 2 | African Pygmy, European |

## Features in Detail

### Animal Database
- Search animals by name, breed, or origin
- Filter by category (Cats, Dogs, Birds, Rabbits, Hedgehogs)
- Switch between Card, List, and Compact views
- Click any animal to see detailed information including:
  - Description and temperament
  - Care level and exercise needs
  - Price range and conservation status
  - Good with kids/pets information

### My Friends (Personal Records)
- Add your own pets with custom details
- Upload photos (URL or local path)
- Track vaccination status and health notes
- Edit and delete entries
- Data persists in browser localStorage

## Getting Started

1. Open `index.html` in any modern web browser
2. No server required - runs entirely client-side
3. Browse the animal database or add your own pets

## Data Schema

Each animal includes the following fields:
- **Basic Info**: Name, category, origin, description
- **Physical**: Size, lifespan, diet
- **Behavior**: Temperament, exercise needs, noise level
- **Care**: Care level, space required, price range
- **Compatibility**: Good with kids, good with other pets
- **Conservation**: Conservation status

## Development

This project was built with vanilla HTML, CSS, and JavaScript. No build tools or frameworks required.

### Key Technologies:
- HTML5 semantic elements
- CSS3 Grid and Flexbox layouts
- CSS3 animations and transitions
- JavaScript ES6+ features
- LocalStorage API for data persistence

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Tabassum Liya**
- GitHub: [@tabassumliya](https://github.com/tabassumliya)

---

*Built with ❤️ for animal lovers everywhere*
