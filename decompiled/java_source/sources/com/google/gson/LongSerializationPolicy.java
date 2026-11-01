package com.google.gson;

/* JADX INFO: loaded from: classes.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.google.gson.LongSerializationPolicy.1
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l11) {
            return l11 == null ? JsonNull.INSTANCE : new JsonPrimitive(l11);
        }
    },
    STRING { // from class: com.google.gson.LongSerializationPolicy.2
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l11) {
            return l11 == null ? JsonNull.INSTANCE : new JsonPrimitive(l11.toString());
        }
    };

    public abstract JsonElement serialize(Long l11);
}
