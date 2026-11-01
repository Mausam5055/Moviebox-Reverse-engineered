package com.cloud.tmc.integration.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
public class JsonObjectUtils {

    public static class Builder {
        private final JsonObject data;

        public Builder() {
            this(new JsonObject());
        }

        public Builder(@NonNull JsonObject jsonObject) {
            this.data = jsonObject;
        }

        @NonNull
        public Builder add(@NonNull String str, @Nullable JsonElement jsonElement) {
            this.data.add(str, jsonElement);
            return this;
        }

        @NonNull
        public Builder addProperty(@NonNull String str, @Nullable Boolean bool) {
            this.data.addProperty(str, bool);
            return this;
        }

        @NonNull
        public Builder addProperty(@NonNull String str, @Nullable Character ch2) {
            this.data.addProperty(str, ch2);
            return this;
        }

        @NonNull
        public Builder addProperty(@NonNull String str, @Nullable Number number) {
            this.data.addProperty(str, number);
            return this;
        }

        @NonNull
        public Builder addProperty(@NonNull String str, @Nullable String str2) {
            this.data.addProperty(str, str2);
            return this;
        }

        @NonNull
        public JsonObject build() {
            return this.data;
        }

        @NonNull
        public Builder remove(@NonNull String str) {
            this.data.remove(str);
            return this;
        }
    }

    private JsonObjectUtils() {
    }

    @NonNull
    public static Builder create() {
        return create(new JsonObject());
    }

    @NonNull
    public static Builder create(@Nullable JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        return new Builder(jsonObject);
    }
}
