package com.amazonaws.services.s3.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class KMSEncryptionMaterialsProvider extends StaticEncryptionMaterialsProvider implements Serializable {
    public KMSEncryptionMaterialsProvider(KMSEncryptionMaterials kMSEncryptionMaterials) {
        super(kMSEncryptionMaterials);
    }

    public KMSEncryptionMaterialsProvider(String str) {
        this(new KMSEncryptionMaterials(str));
    }
}
