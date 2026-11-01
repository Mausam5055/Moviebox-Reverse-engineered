package org.apache.commons.compress.compressors.pack200;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public enum Pack200Strategy {
    IN_MEMORY { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.1
        @Override // org.apache.commons.compress.compressors.pack200.Pack200Strategy
        b newStreamBridge() {
            return new a();
        }
    },
    TEMP_FILE { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.2
        @Override // org.apache.commons.compress.compressors.pack200.Pack200Strategy
        b newStreamBridge() throws IOException {
            return new c();
        }
    };

    abstract b newStreamBridge() throws IOException;
}
