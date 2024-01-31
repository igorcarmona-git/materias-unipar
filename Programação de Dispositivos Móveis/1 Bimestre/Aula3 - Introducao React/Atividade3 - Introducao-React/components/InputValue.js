import React from "react";
import { Text, View, TextInput } from "react-native";

const InputValue = () => {
  // Quando se cria um style 'inline' voce utiliza duas {{}}
  // Quando voce importa um stylesheet, voce utiliza apenas uma {}
  return (
    <View>
      <Text
        style={{
          color: "blue",
          fontSize: 18,
          fontWeight: "bold",
        }}
      >
        Type:
      </Text>

      <TextInput
        style={{
          borderColor: "black",
          borderWidth: 2,
          height: 40,
          fontSize: 16,
          fontWeight: "100",
        }}
        placeholder="Type something here!"
      ></TextInput>
    </View>
  );
};

export default InputValue;
