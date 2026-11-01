.class final Lk0/p0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lk0/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk0/p0;

    invoke-direct {v0}, Lk0/p0;-><init>()V

    sput-object v0, Lk0/p0;->a:Lk0/p0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/text/StaticLayout$Builder;I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0, p1}, Lk0/o0;->a(Landroid/text/StaticLayout$Builder;I)Landroid/text/StaticLayout$Builder;

    return-void
.end method
