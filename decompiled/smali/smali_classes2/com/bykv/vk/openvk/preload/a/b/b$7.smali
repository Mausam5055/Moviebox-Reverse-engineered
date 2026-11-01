.class final Lcom/bykv/vk/openvk/preload/a/b/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/preload/a/b/b;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bykv/vk/openvk/preload/a/b/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/bykv/vk/openvk/preload/a/f;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/b$7;->a:Lcom/bykv/vk/openvk/preload/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/b$7;->a:Lcom/bykv/vk/openvk/preload/a/f;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
