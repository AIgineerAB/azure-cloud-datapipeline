import streamlit as st
from connect_data_warehouse import query_job_listings


def layout():

    df = query_job_listings()

    st.title("Techical field job ads")
    st.write(
        "This dashboard shows technical field job ads from arbetsförmedlingens API. "
    )

    st.markdown("## Vacancies")
    cols = st.columns(3)

    with cols[0]:
        st.metric(label="Total", value=df["vacancies"].sum())

    with cols[1]:
        st.metric(
            label="GIS- och kartingenjörer",
            value=df.query("occupation_group == 'GIS- och kartingenjörer'")["vacancies"].sum(),
        )

    with cols[2]:
        st.metric(
            label="Arkitekter m.fl.",
            value=df.query("occupation_group == 'Arkitekter m.fl.'")["vacancies"].sum(),
        )

    st.markdown("## Job listings data")
    st.dataframe(df)


if __name__ == "__main__":
    layout()