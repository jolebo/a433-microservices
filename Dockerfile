# mengunduh / mengambil image bernama node dengan tag 14.21-alpine dari docker hub
FROM node:14.21-alpine

# membuat directori baru
WORKDIR /app

# meng copy semua file ke dalam directory /app
COPY . .

# setting env
ENV NODE_ENV=production DB_HOST=item-db

# melakukan perintah untuk meng install package yang dibutuhkan aplikasi
RUN npm install --production --unsafe-perm && npm run build

# membuka port yang akan digunakan container yaitu 8080
EXPOSE 8080

# menjalankan aplikasi
CMD ["npm", "start"]