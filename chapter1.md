---
title: Chapter 1
description: Chapter description goes here.
free_preview: true
---

## Example coding exercise

```yaml
type: NormalExercise
key: e8c1edbe67
lang: python
xp: 100
skills:
  - 2
```

In this example, you'll use spaCy's `Doc` and `Token` objects, and lexical attributes to find percentages in a text. You'll be looking for two subsequent tokens: a number and a percent sign. The English `nlp` object has already been created.

`@instructions`
* Use the `like_num` token attribute to check whether a token in the `doc` resembles a number.
* Get the token *following* the current token in the document. The index of the next token in the `doc` is `token.i + 1`.
* Check whether the next token's `text` attribute is a percent sign "%".

`@hint`


`@pre_exercise_code`
```{python}
from spacy.lang.en import English

nlp = English()
```

`@sample_code`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if ____.____:
        # Get the next token in the document
        next_token = ____[____]
        # Check if the next token's text equals '%'
        if next_token.____ == '%':
            print('Percentage found:', token.text)
```

`@solution`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if token.like_num:
        # Get the next token in the document
        next_token = doc[token.i + 1]
        # Check if the next token's text equals '%'
        if next_token.text == '%':
          print('Percentage found:', token.text)
```

`@sct`
```{python}
Ex().check_object('doc').has_equal_value(expr_code = "doc.text")


Ex().check_correct(
  multi( # 2 tokes in this doc
    has_output("Percentage\s+found\s*:\s*60"),
    has_output("Percentage\s+found\s*:\s*4")
  ),
  check_for_loop().multi(
    check_iter().has_equal_ast(),
    check_body().check_if_else().multi(
      check_test().has_equal_ast(),
      check_body().multi(
        has_equal_ast(code = "next_token = doc[token.i + 1]", incorrect_msg = "Are you updating `next_token` correctly inside the loop?"),
        check_if_else().multi(
          check_test().has_equal_ast(),
          check_body().has_equal_ast()
        )
      )
    )
  )
)

success_msg("Well done! As you can see, you can do a lot of very powerful analyses using the tokens and their attributes.")
```

---

## Copy of Example coding exercise

```yaml
type: NormalExercise
key: 7b53e3687f
lang: python
xp: 100
skills:
  - 2
```

In this example, you'll use spaCy's `Doc` and `Token` objects, and lexical attributes to find percentages in a text. You'll be looking for two subsequent tokens: a number and a percent sign. The English `nlp` object has already been created.

`@instructions`
* Use the `like_num` token attribute to check whether a token in the `doc` resembles a number.
* Get the token *following* the current token in the document. The index of the next token in the `doc` is `token.i + 1`.
* Check whether the next token's `text` attribute is a percent sign "%".

`@hint`


`@pre_exercise_code`
```{python}
from spacy.lang.en import English

nlp = English()
```

`@sample_code`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if ____.____:
        # Get the next token in the document
        next_token = ____[____]
        # Check if the next token's text equals '%'
        if next_token.____ == '%':
            print('Percentage found:', token.text)
```

`@solution`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if token.like_num:
        # Get the next token in the document
        next_token = doc[token.i + 1]
        # Check if the next token's text equals '%'
        if next_token.text == '%':
          print('Percentage found:', token.text)
```

`@sct`
```{python}
Ex().check_object('doc').has_equal_value(expr_code = "doc.text")


Ex().check_correct(
  multi( # 2 tokes in this doc
    has_output("Percentage\s+found\s*:\s*60"),
    has_output("Percentage\s+found\s*:\s*4")
  ),
  check_for_loop().multi(
    check_iter().has_equal_ast(),
    check_body().check_if_else().multi(
      check_test().has_equal_ast(),
      check_body().multi(
        has_equal_ast(code = "next_token = doc[token.i + 1]", incorrect_msg = "Are you updating `next_token` correctly inside the loop?"),
        check_if_else().multi(
          check_test().has_equal_ast(),
          check_body().has_equal_ast()
        )
      )
    )
  )
)

success_msg("Well done! As you can see, you can do a lot of very powerful analyses using the tokens and their attributes.")
```

---

## Copy of Copy of Example coding exercise

```yaml
type: NormalExercise
key: 2c7bbe8055
lang: python
xp: 100
skills:
  - 2
```

In this example, you'll use spaCy's `Doc` and `Token` objects, and lexical attributes to find percentages in a text. You'll be looking for two subsequent tokens: a number and a percent sign. The English `nlp` object has already been created.

`@instructions`
* Use the `like_num` token attribute to check whether a token in the `doc` resembles a number.
* Get the token *following* the current token in the document. The index of the next token in the `doc` is `token.i + 1`.
* Check whether the next token's `text` attribute is a percent sign "%".

`@hint`


`@pre_exercise_code`
```{python}
from spacy.lang.en import English

nlp = English()
```

`@sample_code`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if ____.____:
        # Get the next token in the document
        next_token = ____[____]
        # Check if the next token's text equals '%'
        if next_token.____ == '%':
            print('Percentage found:', token.text)
```

`@solution`
```{python}
# Process the text
doc = nlp("In 1990, more than 60% of people in East Asia were in extreme poverty. Now less than 4% are.")

# Iterate over the tokens in the doc
for token in doc:
    # Check if the token resembles a number
    if token.like_num:
        # Get the next token in the document
        next_token = doc[token.i + 1]
        # Check if the next token's text equals '%'
        if next_token.text == '%':
          print('Percentage found:', token.text)
```

`@sct`
```{python}
Ex().check_object('doc').has_equal_value(expr_code = "doc.text")


Ex().check_correct(
  multi( # 2 tokes in this doc
    has_output("Percentage\s+found\s*:\s*60"),
    has_output("Percentage\s+found\s*:\s*4")
  ),
  check_for_loop().multi(
    check_iter().has_equal_ast(),
    check_body().check_if_else().multi(
      check_test().has_equal_ast(),
      check_body().multi(
        has_equal_ast(code = "next_token = doc[token.i + 1]", incorrect_msg = "Are you updating `next_token` correctly inside the loop?"),
        check_if_else().multi(
          check_test().has_equal_ast(),
          check_body().has_equal_ast()
        )
      )
    )
  )
)

success_msg("Well done! As you can see, you can do a lot of very powerful analyses using the tokens and their attributes.")
```
