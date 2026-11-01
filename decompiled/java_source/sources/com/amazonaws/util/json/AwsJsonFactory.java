package com.amazonaws.util.json;

import java.io.Reader;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
public interface AwsJsonFactory {
    AwsJsonWriter a(Writer writer);

    AwsJsonReader b(Reader reader);
}
