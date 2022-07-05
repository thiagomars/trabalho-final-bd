/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author thiag
 */
public class Aluno {
    private int matricula;
    private int data_ingresso;
    private int data_formacao;
    private String cod_curso;
    private String usuario;

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public int getData_ingresso() {
        return data_ingresso;
    }

    public void setData_ingresso(int data_ingresso) {
        this.data_ingresso = data_ingresso;
    }

    public int getData_formacao() {
        return data_formacao;
    }

    public void setData_formacao(int data_formacao) {
        this.data_formacao = data_formacao;
    }

    public String getCod_curso() {
        return cod_curso;
    }

    public void setCod_curso(String cod_curso) {
        this.cod_curso = cod_curso;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public Aluno() {
    }

    public Aluno(int matricula, int data_ingresso, int data_formacao, String cod_curso, String usuario) {
        this.matricula = matricula;
        this.data_ingresso = data_ingresso;
        this.data_formacao = data_formacao;
        this.cod_curso = cod_curso;
        this.usuario = usuario;
    }
    
    
    
    
}
