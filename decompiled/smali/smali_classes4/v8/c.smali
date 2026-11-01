.class public final Lv8/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv8/c$a;
    }
.end annotation


# static fields
.field private static final c:Lv8/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv8/c$a;

    invoke-direct {v0}, Lv8/c$a;-><init>()V

    invoke-virtual {v0}, Lv8/c$a;->a()Lv8/c;

    move-result-object v0

    sput-object v0, Lv8/c;->c:Lv8/c;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv8/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lv8/c;->b:Ljava/util/List;

    return-void
.end method

.method public static c()Lv8/c$a;
    .locals 1

    new-instance v0, Lv8/c$a;

    invoke-direct {v0}, Lv8/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lv8/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv8/c;->a:Ljava/lang/String;

    return-object v0
.end method
