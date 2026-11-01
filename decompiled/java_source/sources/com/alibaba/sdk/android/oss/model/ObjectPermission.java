package com.alibaba.sdk.android.oss.model;

/* JADX INFO: loaded from: classes2.dex */
public enum ObjectPermission {
    Private("private"),
    PublicRead("public-read"),
    PublicReadWrite("public-read-write"),
    Default("default"),
    Unknown("");

    private String permissionString;

    ObjectPermission(String str) {
        this.permissionString = str;
    }

    public static ObjectPermission parsePermission(String str) {
        ObjectPermission[] objectPermissionArr = {Private, PublicRead, PublicReadWrite, Default};
        for (int i11 = 0; i11 < 4; i11++) {
            ObjectPermission objectPermission = objectPermissionArr[i11];
            if (objectPermission.permissionString.equals(str)) {
                return objectPermission;
            }
        }
        return Unknown;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.permissionString;
    }
}
