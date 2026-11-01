package com.google.gson;

import com.google.gson.internal.bind.JsonTreeReader;
import com.google.gson.internal.bind.JsonTreeWriter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public abstract class TypeAdapter<T> {
    public final T fromJson(Reader reader) throws IOException {
        return read2(new JsonReader(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson(new StringReader(str));
    }

    public final T fromJsonTree(JsonElement jsonElement) {
        try {
            return read2(new JsonTreeReader(jsonElement));
        } catch (IOException e11) {
            throw new JsonIOException(e11);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() { // from class: com.google.gson.TypeAdapter.1
            @Override // com.google.gson.TypeAdapter
            /* JADX INFO: renamed from: read */
            public T read2(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return (T) TypeAdapter.this.read2(jsonReader);
                }
                jsonReader.nextNull();
                return null;
            }

            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter jsonWriter, T t11) throws IOException {
                if (t11 == null) {
                    jsonWriter.nullValue();
                } else {
                    TypeAdapter.this.write(jsonWriter, t11);
                }
            }
        };
    }

    /* JADX INFO: renamed from: read */
    public abstract T read2(JsonReader jsonReader) throws IOException;

    public final String toJson(T t11) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t11);
            return stringWriter.toString();
        } catch (IOException e11) {
            throw new JsonIOException(e11);
        }
    }

    public final void toJson(Writer writer, T t11) throws IOException {
        write(new JsonWriter(writer), t11);
    }

    public final JsonElement toJsonTree(T t11) {
        try {
            JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, t11);
            return jsonTreeWriter.get();
        } catch (IOException e11) {
            throw new JsonIOException(e11);
        }
    }

    public abstract void write(JsonWriter jsonWriter, T t11) throws IOException;
}
