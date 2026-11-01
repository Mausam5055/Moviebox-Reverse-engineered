package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@SafeParcelable.Class(creator = "PatternItemCreator")
@SafeParcelable.Reserved({1})
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzi();
    private static final String TAG = "PatternItem";

    @SafeParcelable.Field(getter = "getType", id = 2)
    private final int type;

    @Nullable
    @SafeParcelable.Field(getter = "getLength", id = 3)
    private final Float zzdv;

    @SafeParcelable.Constructor
    public PatternItem(@SafeParcelable.Param(id = 2) int i11, @Nullable @SafeParcelable.Param(id = 3) Float f11) {
        boolean z10 = true;
        if (i11 != 1 && (f11 == null || f11.floatValue() < 0.0f)) {
            z10 = false;
        }
        String strValueOf = String.valueOf(f11);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 45);
        sb2.append("Invalid PatternItem: type=");
        sb2.append(i11);
        sb2.append(" length=");
        sb2.append(strValueOf);
        Preconditions.checkArgument(z10, sb2.toString());
        this.type = i11;
        this.zzdv = f11;
    }

    @Nullable
    static List<PatternItem> zza(@Nullable List<PatternItem> list) {
        PatternItem dash;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (PatternItem dot : list) {
            if (dot == null) {
                dot = null;
            } else {
                int i11 = dot.type;
                if (i11 == 0) {
                    dash = new Dash(dot.zzdv.floatValue());
                } else if (i11 == 1) {
                    dot = new Dot();
                } else if (i11 != 2) {
                    String str = TAG;
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Unknown PatternItem type: ");
                    sb2.append(i11);
                    Log.w(str, sb2.toString());
                } else {
                    dash = new Gap(dot.zzdv.floatValue());
                }
                dot = dash;
            }
            arrayList.add(dot);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && Objects.equal(this.zzdv, patternItem.zzdv);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.type), this.zzdv);
    }

    public String toString() {
        int i11 = this.type;
        String strValueOf = String.valueOf(this.zzdv);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 39);
        sb2.append("[PatternItem: type=");
        sb2.append(i11);
        sb2.append(" length=");
        sb2.append(strValueOf);
        sb2.append("]");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.type);
        SafeParcelWriter.writeFloatObject(parcel, 3, this.zzdv, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
