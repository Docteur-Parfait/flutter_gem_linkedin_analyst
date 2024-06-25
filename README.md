# LinkedIn Analyst

**LinkedIn Analyst** is an open-source Flutter application designed to analyze LinkedIn posts using Gemini AI. The tool helps users predict the comprehension level of their posts and provides suggestions to improve clarity and engagement.

## How It Works

LinkedIn Analyst sends your LinkedIn post to Gemini AI, which analyzes the content and predicts the comprehension level of the readers. The tool returns an estimated comprehension percentage and offers advice on how to improve the post in markdown format.

## Features

- **Comprehension Prediction**: Analyze LinkedIn posts and get an estimated comprehension percentage.
- **Improvement Suggestions**: Receive actionable advice in markdown format on how to enhance the post for better understanding.
- **JSON Output**: The analysis results are returned in a structured JSON format.

<div  style="display: flex; flex-direction: column; align-items: center;">  <img  src="https://raw.githubusercontent.com/Docteur-Parfait/flutter_gem_linkedin_analyst/main/screenshoot/1.png"  width="300"  alt="Image 1"  >
<img  src="https://raw.githubusercontent.com/Docteur-Parfait/flutter_gem_linkedin_analyst/main/screenshoot/2.png"  width="300"  alt="Image 1"  >
<img  src="https://raw.githubusercontent.com/Docteur-Parfait/flutter_gem_linkedin_analyst/main/screenshoot/3.png"  width="300"  alt="Image 1"  >

</div>

## JSON Response Format

```json
{
  "percentage": "percentage",
  "advice": "markdown advice"
}
```

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- Flutter SDK: [Installation Guide](https://flutter.dev/docs/get-started/install)
- Git: [Installation Guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- A code editor (recommended: VS Code)

## Cloning the Project

1. Open your terminal or command prompt.
2. Clone the Git repository using the following command:

```bash
git clone https://github.com/Docteur-Parfait/flutter_gem_linkedin_analyst.git
```

3. Navigate to the project directory:

```bash
cd flutter_gem_linkedin_analyst
```

## Environment Setup

To run the project correctly, you need to add a `.env` file containing your Google Gemini AI API key. Follow these steps to set up your `.env` file:

1. In the project's root directory, create a file named `.env`.
2. Add the following line to the `.env` file, replacing `YOUR_GEMINI_API_KEY` with your actual API key:

```
API_KEY=YOUR_GEMINI_API_KEY
```

## Installation

1. Install the required packages:

```bash
flutter pub get
```

## Running the Project

Once you have set up the `.env` file, you can run the Flutter project using the following commands:

```bash
flutter pub get
flutter run
```

## Example

Here is an example of how to use the application:

1. Start the application:

```bash
flutter run
```

2. Input your LinkedIn post content in the app's interface:

```
Enter your LinkedIn post content here: "At XYZ Corp, we are revolutionizing the industry with our innovative AI solutions..."
```

3. Receive the analysis results displayed on the app:

```json
{
  "percentage": 90,
  "advice": "### Suggestions to improve your post\n- Simplify technical terms.\n- Use shorter sentences for better readability.\n- Add a call to action."
}
```

## Contributing

Contributions are welcome! If you would like to contribute, please follow these steps:

1. Fork the repository
2. Create a branch for your feature (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Author

- Parfait Toke - [LinkedIn: @parfait-toke](https://www.linkedin.com/in/parfait-toke/)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
