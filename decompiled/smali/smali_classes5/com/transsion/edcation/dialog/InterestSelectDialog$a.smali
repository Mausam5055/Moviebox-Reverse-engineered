.class final Lcom/transsion/edcation/dialog/InterestSelectDialog$a;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/dialog/InterestSelectDialog;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lcom/transsion/edcation/dialog/InterestSelectDialog$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;

    invoke-direct {v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;-><init>()V

    sput-object v0, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;->a:Lcom/transsion/edcation/dialog/InterestSelectDialog$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->l(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/edcation/dialog/InterestSelectDialog$a;->a(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
