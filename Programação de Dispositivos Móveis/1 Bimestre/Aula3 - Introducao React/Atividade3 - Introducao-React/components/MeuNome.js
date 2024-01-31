import React from "react";
import { Text, View } from "react-native";

const MeuNome = (props) => {
  return (
    <View>
      <Text
        style={{
          margin: 10,
          height: 80,
          borderColor: "black",
          borderWidth: 1,
          padding: 8,
        }}
      >
        Olá, este é um aplicativo criado pela empresa {props.marca}, conhecida
        como: {props.nomeEmpresa}.
      </Text>
    </View>
  );
};

export default MeuNome;
