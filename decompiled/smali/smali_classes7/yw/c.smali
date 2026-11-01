.class public final Lyw/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyw/c$a;
    }
.end annotation


# static fields
.field public static final a:Lyw/c$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyw/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyw/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyw/c;->a:Lyw/c$a;

    new-instance v0, Lyw/b;

    invoke-direct {v0}, Lyw/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lyw/c;->b:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lyw/a;
    .locals 1

    invoke-static {}, Lyw/c;->b()Lyw/a;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lyw/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lyw/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyw/a;

    return-object v0
.end method
