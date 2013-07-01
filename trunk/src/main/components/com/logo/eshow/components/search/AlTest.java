package com.logo.eshow.components.search;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;

public class AlTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Analyzer analyzer = new Analyzer() {
			@Override
			protected TokenStreamComponents createComponents(String arg0, Reader arg1) {
				// TODO Auto-generated method stub
				return null;
			}
		};
		TokenStream tokenStream;
		try {
			tokenStream = analyzer.tokenStream(null, new StringReader("wang jun long"));
			System.out.println(tokenStream.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
