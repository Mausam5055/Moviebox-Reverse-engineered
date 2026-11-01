package com.amazonaws.util.json;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class JsonUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AwsJsonFactory f19027a = new GsonFactory();

    @Deprecated
    public enum JsonEngine {
        Gson,
        Jackson
    }

    public static AwsJsonReader a(Reader reader) {
        return f19027a.b(reader);
    }

    public static AwsJsonWriter b(Writer writer) {
        return f19027a.a(writer);
    }

    public static Map c(Reader reader) {
        AwsJsonReader awsJsonReaderA = a(reader);
        try {
            if (awsJsonReaderA.peek() == null) {
                return Collections.EMPTY_MAP;
            }
            HashMap map = new HashMap();
            awsJsonReaderA.a();
            while (awsJsonReaderA.hasNext()) {
                String strE = awsJsonReaderA.e();
                if (awsJsonReaderA.d()) {
                    awsJsonReaderA.c();
                } else {
                    map.put(strE, awsJsonReaderA.f());
                }
            }
            awsJsonReaderA.b();
            awsJsonReaderA.close();
            return Collections.unmodifiableMap(map);
        } catch (IOException e11) {
            throw new AmazonClientException("Unable to parse JSON String.", e11);
        }
    }

    public static Map d(String str) {
        return (str == null || str.isEmpty()) ? Collections.EMPTY_MAP : c(new StringReader(str));
    }

    public static String e(Map map) {
        if (map == null || map.isEmpty()) {
            return "{}";
        }
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterB = b(stringWriter);
            awsJsonWriterB.a();
            for (Map.Entry entry : map.entrySet()) {
                awsJsonWriterB.c((String) entry.getKey()).d((String) entry.getValue());
            }
            awsJsonWriterB.b();
            awsJsonWriterB.close();
            return stringWriter.toString();
        } catch (IOException e11) {
            throw new AmazonClientException("Unable to serialize to JSON String.", e11);
        }
    }
}
