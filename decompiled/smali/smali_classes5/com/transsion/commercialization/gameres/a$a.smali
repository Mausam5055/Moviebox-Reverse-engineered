.class public final Lcom/transsion/commercialization/gameres/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/commercialization/gameres/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/gameres/a$a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/commercialization/gameres/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/commercialization/gameres/a$a;

    invoke-direct {v0}, Lcom/transsion/commercialization/gameres/a$a;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/gameres/a$a;->a:Lcom/transsion/commercialization/gameres/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/bean/GameInfoType;)Lcom/transsion/commercialization/gameres/a;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/commercialization/gameres/a$a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    invoke-direct {p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    invoke-direct {p1}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;-><init>()V

    :goto_0
    return-object p1
.end method
