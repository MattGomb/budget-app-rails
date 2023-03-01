# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Budget App <a name="about-project"></a>

**Budget App** is a simple application, where users can register themselves, create categories, and record their spending in them. For the categories users
can upload icons to make the app cooler. Users can also delete categories and expenses, but not edit them. The total value can also be seen for each category.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>


- **Users need to register and log in to access anything**
- **Users can add and delete categories**
- **Users can add and delete expenses**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link](https://budgetappmatt.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
- [Ruby on Rails](https://rubyonrails.org/) installed and running. To get more information, read the [installation guide](https://guides.rubyonrails.org/).

- [PostgreSQL](https://www.postgresql.org/) installed and running

### Setup

Clone this repository to your desired folder:

```
  git clone https://github.com/MattGomb/budget-app-rails.git
  cd Budget-App-rails
  bundle install
  rails db:create
  rails db:migrate
```

### Install
Install this project with:

```sh
  bundle install
```
```sh
  npm install
```

Create Database 
 - Modify config/database.yml line 6 with your postgres password

```
  rails db:create
  rails db:migrate
  rails db:seed
```

### Usage

To run the project, execute the following command:

```sh
  rails server
  or
  rails s
```

### Run tests

To run tests, run the following command:

```sh
rails db:migrate RAILS_ENV=test

rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Author <a name="authors"></a>

👤 **Mátyás Gombos**

- GitHub: [@MattGomb](https://github.com/MattGomb)
- Twitter: [@MtysGombos1](https://twitter.com/MtysGombos1)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/gombos-matyas/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Editing expenses**
- [ ] **Better navbar**
- [ ] **Background + improved UX**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank @microverse and the Microverse team for the opportunity!

I would also like to thank [Felipe](https://github.com/jfoyarzo) for all his help!

- Under the the [Creative Commons license](https://creativecommons.org/licenses/by-nc/4.0/)

- Original design from [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
