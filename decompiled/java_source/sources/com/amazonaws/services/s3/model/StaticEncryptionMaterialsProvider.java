package com.amazonaws.services.s3.model;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StaticEncryptionMaterialsProvider implements EncryptionMaterialsAccessor {
    private final EncryptionMaterials materials;

    public StaticEncryptionMaterialsProvider(EncryptionMaterials encryptionMaterials) {
        this.materials = encryptionMaterials;
    }

    public EncryptionMaterials getEncryptionMaterials() {
        return this.materials;
    }

    @Override // com.amazonaws.services.s3.model.EncryptionMaterialsAccessor
    public EncryptionMaterials getEncryptionMaterials(Map<String, String> map) {
        EncryptionMaterials encryptionMaterials;
        Map<String, String> materialsDescription = this.materials.getMaterialsDescription();
        if (map != null && map.equals(materialsDescription)) {
            return this.materials;
        }
        EncryptionMaterialsAccessor accessor = this.materials.getAccessor();
        if (accessor != null && (encryptionMaterials = accessor.getEncryptionMaterials(map)) != null) {
            return encryptionMaterials;
        }
        boolean z10 = true;
        boolean z11 = map == null || map.size() == 0;
        if (materialsDescription != null && materialsDescription.size() != 0) {
            z10 = false;
        }
        if (z11 && z10) {
            return this.materials;
        }
        return null;
    }

    public void refresh() {
    }
}
