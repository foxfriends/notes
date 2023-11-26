FROM ghcr.io/foxfriends/index AS index
WORKDIR /notes
COPY src notes/
RUN index ./notes ./out

FROM ghcr.io/foxfriends/index-ui
WORKDIR /app
COPY --from=index /notes/out/ ./notes/
RUN npm run build
