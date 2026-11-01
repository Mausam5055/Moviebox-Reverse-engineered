.class public abstract enum Lcom/bykv/vk/openvk/preload/a/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bykv/vk/openvk/preload/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bykv/vk/openvk/preload/a/q;

.field private static enum b:Lcom/bykv/vk/openvk/preload/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/q$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/a/q$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/q;->a:Lcom/bykv/vk/openvk/preload/a/q;

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/q$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/a/q$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/q;->b:Lcom/bykv/vk/openvk/preload/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/q;-><init>(Ljava/lang/String;I)V

    return-void
.end method
