.class public final Lcom/transsion/usercenter/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/usercenter/j;

    invoke-direct {v0}, Lcom/transsion/usercenter/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/usercenter/k;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Ltw/d;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/k;->b()Ltw/d;

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final b()Ltw/d;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Ltw/d;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
