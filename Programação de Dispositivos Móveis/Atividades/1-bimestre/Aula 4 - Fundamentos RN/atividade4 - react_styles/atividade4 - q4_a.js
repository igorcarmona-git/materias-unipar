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
    }}
    >
      <View style={{
        flex: 1,
        backgroundColor: 'red',
        }}>
      </View>

      <View style={{
        flex: 1,
        backgroundColor: 'darkorange',
        }}>
      </View>

      <View style={{
        flex: 1,
        backgroundColor: 'green',
        }}>
      </View>
    </SafeAreaView>
  );
}

export default App;
