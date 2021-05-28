db.messages.aggregate([{$match: {createdat: {$gt: 1}}},{$lookup:{
    from: "users",
    localField: "fid",
    foreignField: "_id",
    as: "user"
}}])

db.users.updateOne({_id:ObjectId("60b027c781b33ffd1089febd")}, {$set:{role:"admin"}})