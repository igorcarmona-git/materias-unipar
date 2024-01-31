import React from 'react';
import { Text, SafeAreaView, StyleSheet, FlatList } from 'react-native';

import FraseFora from './components/Primeiro';
import ProdutosList from './components/ProdutosList';
import ValorProduto from './components/ValorProduto';

const App = () => {
  return (
    <SafeAreaView style={styles.container}>
      <FraseFora style={styles.container2} nome='Testando 123...'/>
      <FraseFora style={styles.container2} nome= 'Teste concluido'/>
      <FraseFora style={styles.container2} nome= 'Executando...'/>
      <FlatList
        data={ProdutosList}
        renderItem={ ({ item }) => {
          return (
            <Text style={styles.texts2}>Nome do produto: {item.nome}</Text>
          );
        } }
      />
      <ValorProduto style={styles.container2}/>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'green',
  },

  texts2: {
    color: 'white',
    marginTop: 30,
    textAlign: 'center',
    fontFamily: 'sans-serif',
    fontStyle: 'italic',
    fontSize: 18
  },

});

export default App;
