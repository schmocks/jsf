package de.jsfpraxis.ttt.handler;

import javax.faces.event.ActionEvent;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import de.jsfpraxis.ttt.model.Brett;
import de.jsfpraxis.ttt.model.BrettImpl;


public class TicTacToeHandler {

	private static Log log = LogFactory.getLog(TicTacToeHandler.class);
	
	private static final String KREIS = "/pages/images/not.gif";
	private static final String KREUZ = "/pages/images/cross.gif";
	private static final String LEER  = "/pages/images/leer.gif";
	
	private Brett brett;
	private String meldung;
	

	public TicTacToeHandler() {
		super();
		brett = new BrettImpl();
	}
	

	public void zug(ActionEvent ae) {
		//log.info("zug(ActionEvent) gedrückt");
		if (brett.isFertig())
			return;
		try {
			brett.setze(new Integer(ae.getComponent().getId().split("-")[1]));
			if (brett.isVerloren()) {
				meldung = "Herzlichen Glückwunsch, Sie haben gewonnen";
				return;
			}
			brett.waehleZug();
			if (brett.isGewonnen()) {
				meldung = "Sie haben leider verloren";
			}
		} catch (Exception e) {
			log.info("Kein Spielerzug ausgeführt");
		}
	}

	public String[] getImage() {
		String[] feld = new String[9];
		for (int i = 0; i < brett.getBrett().length; i++) {
			if (brett.getBrett()[i] == Brett.KREIS) {
				feld[i] = KREIS;
			} else if (brett.getBrett()[i] == Brett.KREUZ) {
				feld[i] = KREUZ;
			} else {
				feld[i] = LEER;
			}
		}
		return feld;
	}

	public String neuesSpiel() {
		brett = new BrettImpl();
		meldung = "";
		return "success";
	}
	
	public String getMeldung() {
		return meldung;
	}


	public void setMeldung(String meldung) {
		this.meldung = meldung;
	}
	

}
