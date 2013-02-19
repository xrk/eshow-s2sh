package com.logo.eshow.components.search;

import java.io.IOException;
import java.io.StringReader;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.util.Version;

public class AlTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_34);
		  TokenStream tokenStream;
		try {
			tokenStream = analyzer.reusableTokenStream(null,new StringReader("wang jun long"));
			  System.out.println(tokenStream.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
