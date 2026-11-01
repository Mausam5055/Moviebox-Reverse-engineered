.class public final Lcom/transsion/lib_web/zip/loader/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/zip/loader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/lib_web/zip/loader/c$a;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/lib_web/zip/loader/c$a;

    invoke-direct {v0}, Lcom/transsion/lib_web/zip/loader/c$a;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->a:Lcom/transsion/lib_web/zip/loader/c$a;

    new-instance v0, Lkotlin/Pair;

    const-string v1, "Access-Control-Allow-Origin"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    const-string v3, "Access-Control-Allow-Credentials"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->b:Ljava/util/HashMap;

    const-string v0, "versionCode"

    sput-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/transsion/lib_web/zip/loader/c$a;->b:Ljava/util/HashMap;

    return-object v0
.end method
