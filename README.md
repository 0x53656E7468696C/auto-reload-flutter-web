# auto‑reload‑flutter‑web

> A lightweight shell script to enable automatic hot‑reload and full‑reload for your Flutter web project.

When you run `flutter run -d web-server` (or similar) in the terminal, file changes don’t trigger a reload automatically. With `.ahr.sh`, every time you save a Dart , your Flutter web app will hot‑reload (or full‑reload, if necessary) without you having to press any key.

---

## 📁 Project Structure

Place `.ahr.sh` in the root of your Flutter project (the same directory as `pubspec.yaml`).


> your_flutter_project/
> 
> ├── .ahr.sh
> 
> ├── lib/
> 
> ├── web/
> 
> ├── pubspec.yaml
> 
> └── ...



---

## ⚙️ Prerequisites

- **Flutter SDK** (configured for web)
- **entr** (a lightweight file‑watcher)

### Install `entr`

<details>
<summary><strong>Ubuntu / Debian / WSL / Linux Mint / Pop!_OS</strong></summary>

    sudo apt update
    sudo apt install entr

</details> <details> <summary><strong>Fedora / RHEL / CentOS / AlmaLinux</strong></summary>

    sudo dnf install entr

</details> <details> <summary><strong>Arch Linux / Manjaro</strong></summary>

    sudo pacman -S entr

</details> <details> <summary><strong>openSUSE</strong></summary>

sudo zypper install entr

    sudo zypper install entr

</details> <details> <summary><strong>macOS (Homebrew)</strong></summary>

    brew install entr

</details> <details> <summary><strong>Termux (Android)</strong></summary>

    pkg update
    pkg install entr

If you’re using a Nix‑based environment (e.g. dev.nix), add entr to your packages.
</details> 



🚀 Usage

Make the script executable

     chmod +x .ahr.sh

Run your Flutter web server via the script

     ./ahr.sh

Start coding!
