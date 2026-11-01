package com.hisavana.common.bean;

import com.hisavana.common.interfacz.IBidWithNotify;
import java.math.BigDecimal;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Network {
    private int adt;
    private String applicationId;
    private String applicationKey;
    private transient IBidWithNotify bidInfo;
    private Integer biddingType;
    private String codeSeatId;
    private Integer minPrice;
    private String networkCodeSeatType;
    private Double price;
    private BigDecimal showPriceCoefficient;
    private Integer source;
    private double tempPrice;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Network network = (Network) obj;
        return getAdt() == network.getAdt() && Objects.equals(getApplicationId(), network.getApplicationId()) && Objects.equals(getCodeSeatId(), network.getCodeSeatId()) && Objects.equals(getApplicationKey(), network.getApplicationKey()) && Objects.equals(getSource(), network.getSource());
    }

    public int getAdt() {
        return this.adt;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getApplicationKey() {
        return this.applicationKey;
    }

    public IBidWithNotify getBidInfo() {
        return this.bidInfo;
    }

    public Integer getBiddingType() {
        Integer num = this.biddingType;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getCodeSeatId() {
        String str = this.codeSeatId;
        return str == null ? "" : str;
    }

    public Integer getMinPrice() {
        Integer num = this.minPrice;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getNetworkCodeSeatType() {
        return this.networkCodeSeatType;
    }

    public Double getPrice() {
        Double d11 = this.price;
        return Double.valueOf(d11 == null ? 0.0d : d11.doubleValue());
    }

    public BigDecimal getShowPriceCoefficient() {
        BigDecimal bigDecimal = this.showPriceCoefficient;
        return bigDecimal != null ? bigDecimal : BigDecimal.ONE;
    }

    public Integer getSource() {
        Integer num = this.source;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public double getTempPrice() {
        return this.tempPrice;
    }

    public int hashCode() {
        return (((((((getAdt() * 31) + getApplicationId().hashCode()) * 31) + getCodeSeatId().hashCode()) * 31) + getApplicationKey().hashCode()) * 31) + getSource().intValue();
    }

    public void setAdt(int i11) {
        this.adt = i11;
    }

    public void setApplicationId(String str) {
        this.applicationId = str;
    }

    public void setApplicationKey(String str) {
        this.applicationKey = str;
    }

    public void setBidInfo(IBidWithNotify iBidWithNotify) {
        this.bidInfo = iBidWithNotify;
    }

    public void setBiddingType(Integer num) {
        this.biddingType = num;
    }

    public void setCodeSeatId(String str) {
        this.codeSeatId = str;
    }

    public void setMinPrice(Integer num) {
        this.minPrice = num;
    }

    public void setNetworkCodeSeatType(String str) {
        this.networkCodeSeatType = str;
    }

    public void setPrice(Double d11) {
        this.price = d11;
    }

    public void setShowPriceCoefficient(BigDecimal bigDecimal) {
        this.showPriceCoefficient = bigDecimal;
    }

    public void setSource(Integer num) {
        this.source = num;
    }

    public void setTempPrice(double d11) {
        this.tempPrice = d11;
    }

    public String toString() {
        return "Network{applicationId='" + this.applicationId + "', codeSeatId='" + this.codeSeatId + "', applicationKey='" + this.applicationKey + "', source=" + this.source + ", price=" + this.price + ", tempPrice=" + this.tempPrice + ", adt=" + this.adt + ", networkCodeSeatType='" + this.networkCodeSeatType + "', bidInfo=" + this.bidInfo + ", showPriceCoefficient=" + this.showPriceCoefficient + ", biddingType=" + this.biddingType + ", minPrice=" + this.minPrice + '}';
    }
}
