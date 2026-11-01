.class public final Lap/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lap/b;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lap/b;

    invoke-direct {v0}, Lap/b;-><init>()V

    sput-object v0, Lap/b;->a:Lap/b;

    new-instance v0, Lap/a;

    invoke-direct {v0}, Lap/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lap/b;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lap/b;->c()Z

    move-result v0

    return v0
.end method

.method private static final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lap/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
