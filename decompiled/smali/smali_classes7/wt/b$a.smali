.class public final Lwt/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lwt/b$a;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwt/b$a;

    invoke-direct {v0}, Lwt/b$a;-><init>()V

    sput-object v0, Lwt/b$a;->a:Lwt/b$a;

    new-instance v0, Lwt/a;

    invoke-direct {v0}, Lwt/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lwt/b$a;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lwt/d;
    .locals 1

    invoke-static {}, Lwt/b$a;->c()Lwt/d;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lwt/d;
    .locals 1

    new-instance v0, Lwt/d;

    invoke-direct {v0}, Lwt/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Lwt/b;
    .locals 1

    sget-object v0, Lwt/b$a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwt/b;

    return-object v0
.end method
