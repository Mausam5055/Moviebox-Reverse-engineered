.class final Lcom/cloud/config/utils/XLogUtil$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/config/utils/XLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\n\n\u0002\u0008\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/config/utils/XLogUtil$SingletonHolder;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/cloud/config/utils/XLogUtil;",
        "getINSTANCE",
        "()Lcom/cloud/config/utils/XLogUtil;",
        "INSTANCE$1",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/config/utils/XLogUtil$SingletonHolder;

.field private static final INSTANCE$1:Lcom/cloud/config/utils/XLogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/config/utils/XLogUtil$SingletonHolder;

    invoke-direct {v0}, Lcom/cloud/config/utils/XLogUtil$SingletonHolder;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/XLogUtil$SingletonHolder;->INSTANCE:Lcom/cloud/config/utils/XLogUtil$SingletonHolder;

    new-instance v0, Lcom/cloud/config/utils/XLogUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/config/utils/XLogUtil;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/config/utils/XLogUtil$SingletonHolder;->INSTANCE$1:Lcom/cloud/config/utils/XLogUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/cloud/config/utils/XLogUtil;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/XLogUtil$SingletonHolder;->INSTANCE$1:Lcom/cloud/config/utils/XLogUtil;

    return-object v0
.end method
