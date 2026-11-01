.class public final Lcom/transsion/room/sub/viewmodel/subscription/a;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/sub/viewmodel/subscription/a$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/room/sub/viewmodel/subscription/a$a;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Llq/a;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/sub/viewmodel/subscription/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/sub/viewmodel/subscription/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/sub/viewmodel/subscription/a;->e:Lcom/transsion/room/sub/viewmodel/subscription/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->b:Ljava/lang/String;

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Llq/a;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llq/a;

    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->c:Llq/a;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/viewmodel/subscription/a;->d:Landroidx/lifecycle/b0;

    return-void
.end method
