package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
final class r {
    private static final p LITE_SCHEMA = new q();
    private static final p FULL_SCHEMA = loadSchemaForFullRuntime();

    r() {
    }

    static p full() {
        p pVar = FULL_SCHEMA;
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static p lite() {
        return LITE_SCHEMA;
    }

    private static p loadSchemaForFullRuntime() {
        try {
            return (p) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
