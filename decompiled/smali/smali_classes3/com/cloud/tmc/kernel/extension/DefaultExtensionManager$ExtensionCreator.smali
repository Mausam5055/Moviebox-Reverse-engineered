.class public interface abstract Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$ExtensionCreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtensionCreator"
.end annotation


# virtual methods
.method public abstract createExtensionInstance(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/extension/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Lcom/cloud/tmc/kernel/extension/Extension;"
        }
    .end annotation
.end method
