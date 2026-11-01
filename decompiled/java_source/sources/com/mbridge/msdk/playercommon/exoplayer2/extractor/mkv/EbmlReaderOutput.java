package com.mbridge.msdk.playercommon.exoplayer2.extractor.mkv;

import com.mbridge.msdk.playercommon.exoplayer2.ParserException;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
interface EbmlReaderOutput {
    public static final int TYPE_BINARY = 4;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_MASTER = 1;
    public static final int TYPE_STRING = 3;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_UNSIGNED_INT = 2;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ElementType {
    }

    void binaryElement(int i11, int i12, ExtractorInput extractorInput) throws InterruptedException, IOException;

    void endMasterElement(int i11) throws ParserException;

    void floatElement(int i11, double d11) throws ParserException;

    int getElementType(int i11);

    void integerElement(int i11, long j11) throws ParserException;

    boolean isLevel1Element(int i11);

    void startMasterElement(int i11, long j11, long j12) throws ParserException;

    void stringElement(int i11, String str) throws ParserException;
}
