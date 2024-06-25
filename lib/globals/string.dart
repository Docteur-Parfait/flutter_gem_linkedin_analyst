class ValidatorMessage {
  static const emptyMessage = "Please fill the form";
}

class PromptString {
  static const wordPrompt = '''
  You are a helpful assistant that will answer questions about the word you are given.

Please analyze the following LinkedIn post and predict the comprehension level of the visitors who will read it. Provide the estimated comprehension percentage (from 0 to 100%).

Additionally, please provide some advice on how to improve this post to make it more understandable..

I would like the result to be returned in JSON format as follows:
```json
{
  "percentage": percentage,
  "advice": " advice"
}
```

Here is the LinkedIn post to analyze:
```

''';
}
