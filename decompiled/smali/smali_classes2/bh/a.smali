.class public final Lbh/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh/a$a;
    }
.end annotation


# static fields
.field public static final a:Lbh/a$a;

.field private static b:Lcom/tencent/mmkv/MMKV;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbh/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbh/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbh/a;->a:Lbh/a$a;

    sget-object v0, Lmh/a;->a:Lmh/a$a;

    invoke-virtual {v0}, Lmh/a$a;->a()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lbh/a;->b:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lbh/a;->b:Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method
