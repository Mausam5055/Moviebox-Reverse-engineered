package org.jsoup.parser;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class ParseErrorList extends ArrayList<c> {
    private static final int INITIAL_CAPACITY = 16;
    private final int maxSize;

    ParseErrorList(int i11, int i12) {
        super(i11);
        this.maxSize = i12;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i11) {
        return new ParseErrorList(16, i11);
    }

    boolean canAddError() {
        return size() < this.maxSize;
    }

    int getMaxSize() {
        return this.maxSize;
    }
}
