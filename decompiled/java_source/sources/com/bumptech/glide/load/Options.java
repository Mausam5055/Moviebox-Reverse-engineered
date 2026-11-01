package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.a;
import androidx.collection.x0;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class Options implements Key {
    private final a values = new CachedHashCodeArrayMap();

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void updateDiskCacheKey(@NonNull Option<T> option, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        option.update(obj, messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.values.equals(((Options) obj).values);
        }
        return false;
    }

    @Nullable
    public <T> T get(@NonNull Option<T> option) {
        return this.values.containsKey(option) ? (T) this.values.get(option) : option.getDefaultValue();
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.values.hashCode();
    }

    public void putAll(@NonNull Options options) {
        this.values.putAll((x0) options.values);
    }

    public Options remove(@NonNull Option<?> option) {
        this.values.remove(option);
        return this;
    }

    @NonNull
    public <T> Options set(@NonNull Option<T> option, @NonNull T t11) {
        this.values.put(option, t11);
        return this;
    }

    public String toString() {
        return "Options{values=" + this.values + '}';
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i11 = 0; i11 < this.values.size(); i11++) {
            updateDiskCacheKey((Option) this.values.keyAt(i11), this.values.valueAt(i11), messageDigest);
        }
    }
}
