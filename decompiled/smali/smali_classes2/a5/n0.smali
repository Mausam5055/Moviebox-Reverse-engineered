.class public La5/n0;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;


# static fields
.field public static a:La5/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/n0;

    invoke-direct {v0}, La5/n0;-><init>()V

    sput-object v0, La5/n0;->a:La5/n0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    check-cast p2, La5/m0;

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/o0;->C()V

    return-void

    :cond_0
    invoke-interface {p2, p1, p3, p4, p5}, La5/m0;->a(La5/o0;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
