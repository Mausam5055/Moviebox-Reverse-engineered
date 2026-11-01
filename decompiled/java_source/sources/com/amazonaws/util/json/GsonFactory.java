package com.amazonaws.util.json;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;

/* JADX INFO: loaded from: classes2.dex */
final class GsonFactory implements AwsJsonFactory {

    /* JADX INFO: renamed from: com.amazonaws.util.json.GsonFactory$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19024a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f19024a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19024a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19024a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19024a[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19024a[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19024a[JsonToken.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19024a[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19024a[JsonToken.NULL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f19024a[JsonToken.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f19024a[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private static final class GsonReader implements AwsJsonReader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final JsonReader f19025a;

        public GsonReader(Reader reader) {
            this.f19025a = new JsonReader(reader);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void a() throws IOException {
            this.f19025a.beginObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void b() throws IOException {
            this.f19025a.endObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void c() throws IOException {
            this.f19025a.skipValue();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void close() throws IOException {
            this.f19025a.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean d() throws IOException {
            JsonToken jsonTokenPeek = this.f19025a.peek();
            return JsonToken.BEGIN_ARRAY.equals(jsonTokenPeek) || JsonToken.BEGIN_OBJECT.equals(jsonTokenPeek);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String e() {
            return this.f19025a.nextName();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String f() throws IOException {
            JsonToken jsonTokenPeek = this.f19025a.peek();
            if (JsonToken.NULL.equals(jsonTokenPeek)) {
                this.f19025a.nextNull();
                return null;
            }
            if (JsonToken.BOOLEAN.equals(jsonTokenPeek)) {
                return this.f19025a.nextBoolean() ? "true" : "false";
            }
            return this.f19025a.nextString();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean hasNext() {
            return this.f19025a.hasNext();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public AwsJsonToken peek() {
            try {
                return GsonFactory.d(this.f19025a.peek());
            } catch (EOFException unused) {
                return null;
            }
        }
    }

    private static final class GsonWriter implements AwsJsonWriter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final JsonWriter f19026a;

        public GsonWriter(Writer writer) {
            this.f19026a = new JsonWriter(writer);
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter a() throws IOException {
            this.f19026a.beginObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter b() throws IOException {
            this.f19026a.endObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter c(String str) throws IOException {
            this.f19026a.name(str);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public void close() throws IOException {
            this.f19026a.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter d(String str) throws IOException {
            this.f19026a.value(str);
            return this;
        }
    }

    GsonFactory() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AwsJsonToken d(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (AnonymousClass1.f19024a[jsonToken.ordinal()]) {
            case 1:
                return AwsJsonToken.BEGIN_ARRAY;
            case 2:
                return AwsJsonToken.END_ARRAY;
            case 3:
                return AwsJsonToken.BEGIN_OBJECT;
            case 4:
                return AwsJsonToken.END_OBJECT;
            case 5:
                return AwsJsonToken.FIELD_NAME;
            case 6:
                return AwsJsonToken.VALUE_BOOLEAN;
            case 7:
                return AwsJsonToken.VALUE_NUMBER;
            case 8:
                return AwsJsonToken.VALUE_NULL;
            case 9:
                return AwsJsonToken.VALUE_STRING;
            case 10:
                return null;
            default:
                return AwsJsonToken.UNKNOWN;
        }
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public AwsJsonWriter a(Writer writer) {
        return new GsonWriter(writer);
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public AwsJsonReader b(Reader reader) {
        return new GsonReader(reader);
    }
}
