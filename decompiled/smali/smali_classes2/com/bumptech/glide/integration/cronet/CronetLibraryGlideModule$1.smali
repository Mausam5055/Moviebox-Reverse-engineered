.class Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule$1;->this$0:Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule;

    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule$1;->get()Lorg/chromium/net/CronetEngine;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/chromium/net/CronetEngine;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/CronetLibraryGlideModule$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/integration/cronet/CronetEngineSingleton;->getSingleton(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    move-result-object v0

    return-object v0
.end method
