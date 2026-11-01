.class final Lk0/r0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lk0/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/r0;

    invoke-direct {v0}, Lk0/r0;-><init>()V

    sput-object v0, Lk0/r0;->a:Lk0/r0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/text/StaticLayout$Builder;Z)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lk0/q0;->a(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    return-void
.end method
