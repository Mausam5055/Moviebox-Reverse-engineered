.class public final Lcom/transsion/push/utils/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/push/utils/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/push/utils/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/push/utils/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/push/utils/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/push/utils/b;->a:Lcom/transsion/push/utils/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const-string v0, "push/2/notification.json"

    goto :goto_0

    :cond_0
    const-string v0, "push/1/notification.json"

    :goto_0
    return-object v0
.end method
