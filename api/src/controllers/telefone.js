const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const create = async (req, res) => {
    try {
        const telefone = await prisma.telefone.create({
            data: req.body
        });
        return res.status(201).json(telefone);
    } catch (error) {
        return res.status(400).json({ error: error.message });
    }
};

const read = async (req, res) => {
    const telefones = await prisma.telefone.findMany();
    return res.json(telefones);
};

const update = async (req, res) => {
    try {
        const telefone = await prisma.telefone.update({
            where: { id: Number(req.params.id) },
            data: req.body
        });
        return res.status(200).json(telefone);
    } catch (error) {
        return res.status(400).json({ error: error.message });
    }
};


module.exports = { create, read, update };