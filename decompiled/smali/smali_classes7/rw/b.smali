.class public final Lrw/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrw/b$a;
    }
.end annotation


# static fields
.field public static final a:Lrw/b$a;

.field private static b:Ljava/text/DateFormat;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrw/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrw/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrw/b;->a:Lrw/b$a;

    sget v0, Lcom/transsion/usercenter/R$string;->minute_ago:I

    sput v0, Lrw/b;->c:I

    sget v0, Lcom/transsion/usercenter/R$string;->hour_ago:I

    sput v0, Lrw/b;->d:I

    sget v0, Lcom/transsion/usercenter/R$string;->just_now:I

    sput v0, Lrw/b;->e:I

    sget v0, Lcom/transsion/usercenter/R$string;->day_ago:I

    sput v0, Lrw/b;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/text/DateFormat;
    .locals 1

    sget-object v0, Lrw/b;->b:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Lrw/b;->e:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lrw/b;->d:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Lrw/b;->c:I

    return v0
.end method

.method public static final synthetic e(Ljava/text/DateFormat;)V
    .locals 0

    sput-object p0, Lrw/b;->b:Ljava/text/DateFormat;

    return-void
.end method
