import React from 'react';
import {useState} from 'react';
import { Text, SafeAreaView, Button, StyleSheet } from 'react-native';

const ValorProduto = (props) => {
  const [preco, setPreco] = useState(1000);

  return(
    <SafeAreaView>
      <Text style={styles.text}>Valor do produto: {preco} </Text>
      <Button
        onPress = {() => {
          setPreco(preco + preco * 0.10)
        }}
        title='+ 10%'
      />

      <Button
        onPress = {() => {
          setPreco(preco - preco * 0.10)
        }}
        title='- 10%'
      />
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  text:{
    fontSize: 26,
    fontWeight: 'bold',
    textAlign: 'center',
    borderWidth: 4,
    backgroundColor: 'gray',
    color: 'black',
  },

  botoes:{
    color: 'red',
  }
})

export default ValorProduto;