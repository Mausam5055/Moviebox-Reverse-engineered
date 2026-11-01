package com.cloud.tmc.miniapp.dialog;

import com.cloud.tmc.kernel.model.BaseBean;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class BottomActionSheetDialog$ActionItem extends BaseBean implements Serializable {
    private final String color;
    private final String disabledColor;
    private final boolean enable;
    private final String icon;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final String f23541id;
    private final String maskColor;
    private final String text;

    public BottomActionSheetDialog$ActionItem() {
        this(null, null, null, null, false, null, null, 127, null);
    }

    public BottomActionSheetDialog$ActionItem(String str, String str2, String str3, String disabledColor, boolean z10, String str4, String maskColor) {
        Intrinsics.h(disabledColor, "disabledColor");
        Intrinsics.h(maskColor, "maskColor");
        this.f23541id = str;
        this.text = str2;
        this.color = str3;
        this.disabledColor = disabledColor;
        this.enable = z10;
        this.icon = str4;
        this.maskColor = maskColor;
    }

    public /* synthetic */ BottomActionSheetDialog$ActionItem(String str, String str2, String str3, String str4, boolean z10, String str5, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? "#4D191F2B" : str4, (i11 & 16) != 0 ? true : z10, (i11 & 32) == 0 ? str5 : null, (i11 & 64) != 0 ? "#0F191F2B" : str6);
    }

    public static /* synthetic */ BottomActionSheetDialog$ActionItem copy$default(BottomActionSheetDialog$ActionItem bottomActionSheetDialog$ActionItem, String str, String str2, String str3, String str4, boolean z10, String str5, String str6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = bottomActionSheetDialog$ActionItem.f23541id;
        }
        if ((i11 & 2) != 0) {
            str2 = bottomActionSheetDialog$ActionItem.text;
        }
        String str7 = str2;
        if ((i11 & 4) != 0) {
            str3 = bottomActionSheetDialog$ActionItem.color;
        }
        String str8 = str3;
        if ((i11 & 8) != 0) {
            str4 = bottomActionSheetDialog$ActionItem.disabledColor;
        }
        String str9 = str4;
        if ((i11 & 16) != 0) {
            z10 = bottomActionSheetDialog$ActionItem.enable;
        }
        boolean z11 = z10;
        if ((i11 & 32) != 0) {
            str5 = bottomActionSheetDialog$ActionItem.icon;
        }
        String str10 = str5;
        if ((i11 & 64) != 0) {
            str6 = bottomActionSheetDialog$ActionItem.maskColor;
        }
        return bottomActionSheetDialog$ActionItem.copy(str, str7, str8, str9, z11, str10, str6);
    }

    public final String component1() {
        return this.f23541id;
    }

    public final String component2() {
        return this.text;
    }

    public final String component3() {
        return this.color;
    }

    public final String component4() {
        return this.disabledColor;
    }

    public final boolean component5() {
        return this.enable;
    }

    public final String component6() {
        return this.icon;
    }

    public final String component7() {
        return this.maskColor;
    }

    public final BottomActionSheetDialog$ActionItem copy(String str, String str2, String str3, String disabledColor, boolean z10, String str4, String maskColor) {
        Intrinsics.h(disabledColor, "disabledColor");
        Intrinsics.h(maskColor, "maskColor");
        return new BottomActionSheetDialog$ActionItem(str, str2, str3, disabledColor, z10, str4, maskColor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BottomActionSheetDialog$ActionItem)) {
            return false;
        }
        BottomActionSheetDialog$ActionItem bottomActionSheetDialog$ActionItem = (BottomActionSheetDialog$ActionItem) obj;
        return Intrinsics.c(this.f23541id, bottomActionSheetDialog$ActionItem.f23541id) && Intrinsics.c(this.text, bottomActionSheetDialog$ActionItem.text) && Intrinsics.c(this.color, bottomActionSheetDialog$ActionItem.color) && Intrinsics.c(this.disabledColor, bottomActionSheetDialog$ActionItem.disabledColor) && this.enable == bottomActionSheetDialog$ActionItem.enable && Intrinsics.c(this.icon, bottomActionSheetDialog$ActionItem.icon) && Intrinsics.c(this.maskColor, bottomActionSheetDialog$ActionItem.maskColor);
    }

    public final String getColor() {
        return this.color;
    }

    public final String getDisabledColor() {
        return this.disabledColor;
    }

    public final boolean getEnable() {
        return this.enable;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.f23541id;
    }

    public final String getMaskColor() {
        return this.maskColor;
    }

    public final String getText() {
        return this.text;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v9, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10, types: [int] */
    public int hashCode() {
        String str = this.f23541id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.text;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.color;
        int iHashCode3 = (this.disabledColor.hashCode() + ((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31;
        boolean z10 = this.enable;
        ?? r11 = z10;
        if (z10) {
            r11 = 1;
        }
        int i11 = (iHashCode3 + r11) * 31;
        String str4 = this.icon;
        return this.maskColor.hashCode() + ((i11 + (str4 != null ? str4.hashCode() : 0)) * 31);
    }

    public String toString() {
        return "ActionItem(id=" + this.f23541id + ", text=" + this.text + ", color=" + this.color + ", disabledColor=" + this.disabledColor + ", enable=" + this.enable + ", icon=" + this.icon + ", maskColor=" + this.maskColor + ")";
    }
}
