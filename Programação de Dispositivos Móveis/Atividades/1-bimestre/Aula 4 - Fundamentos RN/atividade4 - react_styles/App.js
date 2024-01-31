import React from 'react';
import { View, SafeAreaView, StyleSheet, FlatList } from 'react-native';

import FraseFora from './components/Primeiro';
import ProdutosList from './components/ProdutosList';
import ValorProduto from './components/ValorProduto';

const App = () => {
  return (
    <SafeAreaView style={{
      flex: 1,
      flexDirection: 'column',
      justifyContent: 'flex-end',
      margin: 10,
    }}
    >
      <View style={{
        height: 50,
        width: 50,
        backgroundColor: 'red',
        }}>
      </View>

      <View style={{
        height: 50,
        width: 50,
        backgroundColor: 'darkorange',
        }}>
      </View>

      <View style={{
        height: 50,
        width: 50,
        backgroundColor: 'green',
        }}>
      </View>

      <View style={{
        height: 50,
        width: 50,
        backgroundColor: 'blue',
        }}>
      </View>
    </SafeAreaView>
  );
}
// flex --> // "3/5", "1/5", "1/5"

export default App;
