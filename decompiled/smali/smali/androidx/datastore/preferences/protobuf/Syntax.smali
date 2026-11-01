.class public final enum Landroidx/datastore/preferences/protobuf/Syntax;
.super Ljava/lang/Enum;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Syntax$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/Syntax;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/w$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/Syntax;

.field public static final enum SYNTAX_EDITIONS:Landroidx/datastore/preferences/protobuf/Syntax;

.field public static final SYNTAX_EDITIONS_VALUE:I = 0x2

.field public static final enum SYNTAX_PROTO2:Landroidx/datastore/preferences/protobuf/Syntax;

.field public static final SYNTAX_PROTO2_VALUE:I = 0x0

.field public static final enum SYNTAX_PROTO3:Landroidx/datastore/preferences/protobuf/Syntax;

.field public static final SYNTAX_PROTO3_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Syntax;

.field private static final internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/datastore/preferences/protobuf/Syntax;

    const-string v1, "SYNTAX_PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/datastore/preferences/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_PROTO2:Landroidx/datastore/preferences/protobuf/Syntax;

    new-instance v1, Landroidx/datastore/preferences/protobuf/Syntax;

    const-string v3, "SYNTAX_PROTO3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/datastore/preferences/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_PROTO3:Landroidx/datastore/preferences/protobuf/Syntax;

    new-instance v3, Landroidx/datastore/preferences/protobuf/Syntax;

    const-string v5, "SYNTAX_EDITIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroidx/datastore/preferences/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_EDITIONS:Landroidx/datastore/preferences/protobuf/Syntax;

    new-instance v5, Landroidx/datastore/preferences/protobuf/Syntax;

    const/4 v7, 0x3

    const/4 v8, -0x1

    const-string v9, "UNRECOGNIZED"

    invoke-direct {v5, v9, v7, v8}, Landroidx/datastore/preferences/protobuf/Syntax;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/Syntax;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Syntax;

    const/4 v8, 0x4

    new-array v8, v8, [Landroidx/datastore/preferences/protobuf/Syntax;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    aput-object v5, v8, v7

    sput-object v8, Landroidx/datastore/preferences/protobuf/Syntax;->$VALUES:[Landroidx/datastore/preferences/protobuf/Syntax;

    new-instance v0, Landroidx/datastore/preferences/protobuf/Syntax$a;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Syntax$a;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/Syntax;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/Syntax;->value:I

    return-void
.end method

.method public static forNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_EDITIONS:Landroidx/datastore/preferences/protobuf/Syntax;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_PROTO3:Landroidx/datastore/preferences/protobuf/Syntax;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/Syntax;->SYNTAX_PROTO2:Landroidx/datastore/preferences/protobuf/Syntax;

    return-object p0
.end method

.method public static internalGetValueMap()Landroidx/datastore/preferences/protobuf/w$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/preferences/protobuf/w$b;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/Syntax;->internalValueMap:Landroidx/datastore/preferences/protobuf/w$b;

    return-object v0
.end method

.method public static internalGetVerifier()Landroidx/datastore/preferences/protobuf/w$c;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Syntax$b;->a:Landroidx/datastore/preferences/protobuf/w$c;

    return-object v0
.end method

.method public static valueOf(I)Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Syntax;->forNumber(I)Landroidx/datastore/preferences/protobuf/Syntax;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/Syntax;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/Syntax;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Syntax;->$VALUES:[Landroidx/datastore/preferences/protobuf/Syntax;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/Syntax;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/Syntax;->UNRECOGNIZED:Landroidx/datastore/preferences/protobuf/Syntax;

    if-eq p0, v0, :cond_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/Syntax;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
