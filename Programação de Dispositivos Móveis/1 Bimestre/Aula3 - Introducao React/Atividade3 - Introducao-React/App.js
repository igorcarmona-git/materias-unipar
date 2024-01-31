import React from "react";
import { Text, View, StyleSheet } from "react-native";

import FraseFora from "./components/FraseFora";
import MeuNome from "./components/MeuNome";
import InputValue from "./components/InputValue";
import CompraProduto from "./components/Compra";

const App = () => {
  return (
    <View style={styles.container}>
      <FraseFora />
      <MeuNome marca="nike" nomeEmpresa="Fila" />
      <MeuNome marca="adidas" nomeEmpresa="Roxa" />
      <MeuNome marca="Sorvetes" nomeEmpresa="Chiquinho" />
      <InputValue />
      <CompraProduto cliente="Igor" />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    margin: 20,
    borderWidth: 2,
    padding: 20,
    borderRadius: 30,
  },
});

export default App;
