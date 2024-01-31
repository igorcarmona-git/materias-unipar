// um método 'async' em uma classe é uma função que é definida dentro de uma classe e tem a palavra-chave async antes da palavra-chave function. Isso indica que a função é assíncrona e que ela retorna uma promessa implicitamente. Métodos assíncronos são comumente usados para realizar operações assíncronas, como fazer solicitações de rede, ler arquivos ou executar tarefas que podem levar algum tempo para serem concluídas, sem bloquear o thread principal de execução.

// Você pode usar o 'await' para aguardar a resolução da promessa dentro de métodos assíncrono

import { User } from "@prisma/client";
import { prisma } from "../../../../prisma/client";
import { CreateUserDTO } from "../../dtos/CreateUserDTO";

export class CreateUserUseCase{
    async execute({ name, email }: CreateUserDTO): Promise<User>{ //retorna um promise de User, cria uma tipagem automaticamente usando o nosso schema
        //Verificar se o usuario ja existe
        const userAlreadyExists = await prisma.user.findUnique({    //para buscar algo, deve sempre abrir um objeto
            where:{
                email
            }
        });

        if(userAlreadyExists){
          // erro  
        }

        //Criar o usuario
        const user = await prisma.user.create({
            data:{
                name,
                email
            }
        });

        return user;
    }
}